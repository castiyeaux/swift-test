//
//  GenreButtonScreen.swift
//  MusicPlayer
//
//  Created by Andrea Castillo on 21 MAY 2019.
//  Copyright © 2019 Andrea Castillo. All rights reserved.
//

import UIKit
import MediaPlayer

class GenreButtonScreen: UIViewController {
    
    var musicPlayer = MPMusicPlayerController.applicationMusicPlayer //".applicationMusicPlayer" keeps the music playing only while in this app (once exited, music stops)
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }//end override func
    
    @IBAction func genreButtonTapped(_ sender: UIButton) {
        
        MPMediaLibrary.requestAuthorization { (status) in
            
            if status == .authorized {
                
                DispatchQueue.main.async {
                   
                    self.playGenre(genre: sender.currentTitle!)
                    
                }//end DispatchQueue
                
            }//end if
            
        }//end requestAuthorization
        
        
    }//end genreButtonTapped func
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        
        musicPlayer.stop()
        
    }//end stopButonTapped func
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
        musicPlayer.skipToNextItem()
        
    }//end nextButtonTapped func
    
    func playGenre(genre: String) {
        
        musicPlayer.stop()
        
        let query = MPMediaQuery()
        let predicate = MPMediaPropertyPredicate(value: genre, forProperty: MPMediaItemPropertyGenre)
        
        query.addFilterPredicate(predicate) //applies filter of genre to songs we're going to get
        
        musicPlayer.setQueue(with: query)
        musicPlayer.shuffleMode = .songs
        musicPlayer.play()
        
    }//end playGenre func
    
}//end GenreButtonScreen class
