//File / Sketch / Import Library / Add Library / Click Minim

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer soundEffect1; //Single Varaible, not array

void soundEffectSetup () {
  //size(): Console output, not visual data, text promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  soundEffect1 = minim.loadFile("Wood_Golf_Club_Hit_Ball.mp3");
}

void soundEffectPlay () {
  if ( soundEffect1.position() == soundEffect1.length() ) {
    soundEffect1.rewind();
  }
  soundEffect1.play(850); //where sound starts
}
