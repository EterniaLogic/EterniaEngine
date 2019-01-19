#include "GTextBox.h"

#include <time.h>
#include <iostream>
using namespace std;

// initialize
GTextBox::GTextBox() {
    carrot_col = 0;
    carrot_row = 0;
    lines.add(currentRow=CharString());

    foreColor = vertex(0,0,0);
    backColor = vertex(255,255,255);
    highlightColor = vertex(200,200,200);
    opacity = 1.0f;
    carrot=true;

    this->addChild(bottomscroll=new GSlider());
    this->addChild(rightscroll=new GSlider());
    rightscroll->vertical = true;
}

// Destroy
GTextBox::~GTextBox() {}

// Header Draw Function; Calls all other drawing functions and
// NOTE: GObject handles visibility and selection
void GTextBox::draw() {
    int globalx = getGlobalX();
    int globaly = getGlobalY();
    
    if(mouseOver){
        cursorReq = true;
        cursorSet = GLUT_CURSOR_TEXT;
        needCursorChange = true;
    }else{
        cursorReq = false;
    }

    gDrawSolidColor(backColor, opacity);
    gDrawRectangle(globalx, globaly, width, height);

    // Draw lines of text, detect if a line goes beyond. Scrollbar?


    // Highlight current line (background color darken/lighten)
    gDrawSolidColor(highlightColor, 1.0f);
    gDrawRectangle(globalx, globaly+12*carrot_row, width, 12);

    glLineWidth(3);
    gDrawSolidColor(foreColor, 1.0f);

    // Draw each letter in the text
    lines.freeze();
    int currentlinewidth = 0, carrotlineloc=0;
    for(unsigned int i=0; i<lines.frozenlen; i++) {
        glRasterPos2i(globalx,globaly+ 10 + i*12);
        currentlinewidth=0;

        if(i >= lines.frozenlen || lines.frozen[i].getSize() == 0 || lines.frozen[i].get() == 0x0)
            continue;
        //cout << "drawing text: '" << lines.frozen[i]->get() << "'" << endl;
        for(unsigned int j=0; j<lines.frozen[i].getSize(); j++) {
            // skip for loop if row maxed out
            if(currentlinewidth+6 > width) break;

            // draw character
            glutBitmapCharacter(GLUT_BITMAP_HELVETICA_12, lines.frozen[i].get()[j]);

            // calculate carrot X coordinate
            if(i == carrot_row && carrot_col > j) carrotlineloc += glutBitmapWidth(GLUT_BITMAP_HELVETICA_12, lines.frozen[i].get()[j]);

            // calculate current row width
            currentlinewidth += glutBitmapWidth(GLUT_BITMAP_HELVETICA_12, lines.frozen[i].get()[j]);

        }
    }

    // Draw a carrot
    if(carrot && selected){
        gDrawSolidColor(vertex(0,0,0), 1.0f);
        gDrawLine(globalx+carrotlineloc+1, globaly+12*carrot_row,
                    globalx+carrotlineloc+1, globaly+12*(carrot_row+1), 2);
    }
}

// handles Mouse input;
void GTextBox::handleMouse(MouseHandleEvent* event) {
    debugLoggobject("GTextBox Handle Mouse");

    if(event->event_button == LEFT_BUTTON && event->event_type == MOUSE_DOWN) {

    } else if(event->event_button == LEFT_BUTTON && event->event_type == MOUSE_UP) {

    } else if(event->event_button == RIGHT_BUTTON && event->event_type == MOUSE_UP){

    } else if(dragging) {
        // Mouse guaranteed over and dragging?
        //  Select text...
    }
}

void GTextBox::handleNewline(){
    if(carrot_col < currentRow.getSize()){
        cout << "split row" << endl;
        CharString tmp;
        int tmplen = currentRow.getSize()-carrot_col;
        tmp.set(currentRow.substr(carrot_col,tmplen).get(),tmplen);

        int oldlen = currentRow.getSize()-tmplen;
        currentRow.set(currentRow.substr(0,oldlen).get(),oldlen);

        lines.insert(currentRow = tmp, carrot_row+1);
    }else{
        // insert new line, copy text over if there was some.
        cout << "append row" << endl;
        lines.add(currentRow = CharString("\n",0));
    }

    carrot_col=0;
    carrot_row++;
}

void GTextBox::handleBackspace(){
    if(carrot_col == 0 && carrot_row>0 && carrot_row < lines.size()){
        lines.freeze();
        // append the row onto the previous row, then delete the current row.
        carrot_row--;
        currentRow = lines.frozen[carrot_row];
        CharString tmprow = lines.frozen[carrot_row+1];
        lines.remove(carrot_row+1);
        carrot_col = currentRow.getSize(); // set location first
        currentRow.concata(tmprow);
    }else{
        cout << "Remove midchar" << endl;
        currentRow.removeChar(carrot_col-1);
        if(carrot_col > currentRow.getSize())
            carrot_col = currentRow.getSize();
    }
}

void GTextBox::handleBasicKey(unsigned char key){
    // if at the end of the line, just append to the charstring.
    //  Otherwise, insert char into charstring at carrot_col.
    char* val = (char*)malloc(sizeof(char));
    val[0] = key;

    if(carrot_col >= currentRow.getSize()-1){
        currentRow.concata(val,1);
    }else{
        if(carrot_col > 0){
            CharString a = currentRow.substr(0, carrot_col);
            CharString b = currentRow.substr(carrot_col, currentRow.getSize()-carrot_col);
            currentRow.set(a);
            currentRow.concata(val,1);
            currentRow.concatb(b);
        }else{
            currentRow.concatb(val,1);
        }
    }

    carrot_col++;
}



// Handles any keyboard function
void GTextBox::handleKeyboard(KeyHandleEvent* event) {
    // In this case, handle modification of the current LinkedList row and string

    //cout << "TextBox Key event: #" << (int)event->key << " (Special: " << event->special << ", mods: " << event->modifier << endl;

    if(selected && enabled){
        if(event->special){
            lines.freeze();
            switch(event->key){
                case 101: // up arrow
                        if(carrot_row > 0){
                            carrot_row--;
                            currentRow = lines.frozen[carrot_row];
                            carrot_col = (carrot_col > currentRow.getSize()) ? currentRow.getSize() : carrot_col;
                        }else{
                            carrot_col = 0;
                        }
                    break;
                case 103: // down arrow
                        if(carrot_row < lines.size()-1){
                            carrot_row++;
                            currentRow = lines.frozen[carrot_row];
                            carrot_col = (carrot_col > currentRow.getSize()-1) ? currentRow.getSize()-1 : carrot_col;
                        }else{
                            carrot_col = currentRow.getSize();
                        }
                    break;
                case 100: // left arrow
                        if(carrot_col > 0){
                            carrot_col--;
                        }else if(carrot_row > 0){
                           carrot_row--;
                           currentRow = lines.frozen[carrot_row];
                           carrot_col = currentRow.getSize();
                        }
                    break;
                case 102: // right arrow
                        if(carrot_col <= currentRow.getSize()-1){
                            carrot_col++;
                        }else if(carrot_row < lines.size()-1){
                           carrot_row++;
                           carrot_col = 0;
                           currentRow = lines.frozen[carrot_row];
                        }
                    break;
                case 106: // home
                        carrot_col = 0;
                    break;
                case 107: // end
                        carrot_col = currentRow.getSize();
                    break;
            }
        }else if(enabled){
            switch((int)event->key){
                case 13: // newline
                        handleNewline();
                    break;
                case 8:
                        handleBackspace();
                    break;
                default:
                    handleBasicKey(event->key);
            }
        }
    }
    cout << "CARROT: "<< carrot_col << " "<< carrot_row << endl;
}

void GTextBox::update() {
    // active updates for textbox. (Mostly for carrot timing here)

    lineYover = (lines.size()*12 > height);
    debugLoggobject("GTextBox handle update");

    // scrollbar visibility
    //bottomscroll->visible = (selected || mouseover) && lineXover;
    //rightscroll->visible = (selected || mouseover) && lineYover;

    float ticks_per_sec = 4;
    carrottime = (1000000.0/(2*ticks_per_sec)) - (((clock()-carrottimelast)*1000000.0)/CLOCKS_PER_SEC);
    if(carrottime <= 0){
        carrot = !carrot;

        bottomscroll->setPosition(5,height-bottomscroll->height);
        bottomscroll->width = width-10;
        rightscroll->setPosition(width-rightscroll->width,5);
        rightscroll->height = height-10;

        carrottimelast=clock();
    }

}
