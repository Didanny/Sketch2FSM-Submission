# Sketch2FSM
To start the program, click on `Sketch2FSM_UI.exe` in the directory.

A GUI should start up. Now drag and drop your sketch to the blue rectangle at the top of the window and click the `Start` button.

The program is now analyzing the sketch and identifying the components, this may take a minute.

The program's rendition of the sketch should now have appeared right below the image you dropped. Now use the `Edittig Panel` on the right to correct any mistakes that might have been made.

Rotate between the components using the `>>` button. The selected component will be colored in red in the rendition. The information of the selected component will also appear in the text boxes in the `Editting Panel`. To modify the information simply edit the text in the text boxes. You can specify if a state is accepting or not using an `Is Accept` checkbox. You can flip the direction of an arrow using the `Flip Direction` button. Also you can delete the selected component with the `Delete` button.

To add a new component, specify which component you would like to add (Arrow/State) using the radio buttons below `Add New...`. Now click drag and release the left mouse button while the cursor is on top of the rendition to insert the new component. You cat edit the component by rotating to it with the `>>` button and using the `Editting Panel` to modify the default information.

When all modifications are complete, click the `Done` button. A `FSM.vhd` file will be generated in the same directory that contains the VHDL code generated.

A sample image has been included `sample.jpg` in the directory.