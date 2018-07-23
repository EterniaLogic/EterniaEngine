uniform vec3 ambient;
uniform vec3 diffuse;
uniform vec3 specc;
uniform vec3 lightloc;

const float precis = 0.0001;



vec3 getNormal( vec3 p ){
	float e = precis;
	return normalize( vec3( map( vec3( p.x + e, p.y, p.z ) ).x - map(  vec3( p.x - e, p.y, p.z ) ).x, 
		     map( vec3( p.x, p.y + e, p.z ) ).x - map( vec3( p.x, p.y - e, p.z ) ).x,
		     map( vec3( p.x, p.y, p.z + e ) ).x - map( vec3( p.x, p.y, p.z - e ) ).x ) );	
}

float raymarching( vec3 ro, vec3 rd ){
	float res = -1.0;
	float tmin = 1.0;
	float tmax = 100.0;

	float t = tmin;
	for ( int i = 0; i< 128; i++ ){
		res = map( ro + t * rd ).x;
		if ( res < precis || t > tmax ) break;
		t += res * 1.0;
	}
	
	if ( t > tmax ) t = -1.0;
	return t;
}



void main( void ) {

	vec3 ld = lightloc; //vec3( 1.0, -1.0, 2 );
	ld = normalize( ld );
	rd = normalize( rd );
	vec3 color = vec3( 0.0 );
	
	float t = raymarching( ro, rd );

	//Caculate the normal vector.
	vec3 n = getNormal( ro + t * rd );
	vec3 hit = ro + t * rd;
	vec2 res = map( hit );
	//Caculate diffuse.
	vec3 diff = diffuse * dot( n, -ld ) * 10.0 * abs(sin( res.y ) ) ;
	
	//Caculate sepc.
	vec3 spec = specc * pow(  max( 0.0, dot( -rd,  reflect( ld , n ) ) ), 13.0 );
	if (res.y == 1.0){
		spec = vec3( 0.0 );
		
		if ( mod( floor( hit.x * 4.0 ) , 2.0 ) == 0.0 || mod( floor( hit.z * 4.0 ) , 2.0 ) == 0.0 ){
			diff = vec3( 0.9, 0.7, 0.9 );	
		}
		else{	
			diff = vec3( 0.5 );
		}
		
	}

	color = diff + spec + ambient;
	
	
	gl_FragColor = vec4( color, 1.0 );
}
