LOROM

org $8291BE
                       JSR.W CODE_82F719
					   
org $82B5C5
                       JSR.W CODE_82F70F
					   
org $82B5E3
                       JSR.W CODE_82F714
					   
org $82F70F
          CODE_82F70F: JSR.W $A27E
                       BRA CODE_82F717  
                                        
          CODE_82F714: JSR.W $A29D
                                        
          CODE_82F717: BRA CODE_82F71C  
                                        
          CODE_82F719: JSR.W $A615
        
                                                 
          CODE_82F71C: PHX                       
                       PHY                       
                       LDX.W #$0004              
                       LDA.W $09A2               
                       BIT.W #$0020              
                       BNE CODE_82F732           
                       DEX                       
                       DEX                       
                       BIT.W #$0001              
                       BNE CODE_82F732           
                       DEX                       
                       DEX                       
                                                 
          CODE_82F732: LDA.W #$B600              
                       STA.B $01                 
                       LDA.L DATA16_82F755,X    
                       STA.B $00                 
                       LDY.W #$0000              
                       LDX.W #$0000              
                                                 
          CODE_82F743: LDA.B [$00],Y             
                       STA.L $7EC020,X           
                       INY                       
                       INY                       
                       INX                       
                       INX                       
                       CPX.W #$0020              
                       BCC CODE_82F743           
                       PLY                       
                       PLX                       
                       RTS                       
                                                 
        DATA16_82F755: dw $F200,$F220,$F240
	   
org $B6F200
                       db $03,$20,$B1,$0B,$A9,$1E,$45,$01
                       db $5D,$2B,$B3,$3D,$2E,$29,$86,$14
                       db $99,$1A,$69,$10,$52,$01,$00,$00
                       db $DB,$14,$5D,$2B,$FF,$7F,$52,$01
org $B6F220
                       db $03,$20,$B1,$0B,$A9,$1E,$45,$01
                       db $7F,$3F,$B3,$3D,$2E,$29,$86,$14
                       db $1D,$1A,$69,$10,$52,$01,$00,$00
                       db $DB,$14,$5D,$2B,$FF,$7F,$F0,$14
org $B6F240
                       db $03,$20,$B1,$0B,$A9,$1E,$45,$01
                       db $FF,$5D,$B3,$3D,$2E,$29,$86,$14
                       db $15,$69,$69,$10,$52,$01,$00,$00
                       db $DB,$14,$5D,$2B,$FF,$7F,$AB,$38
