HOW TO READ: 

 FILE CHANGED => +++ b/biome/rainforest_dark.xml 

 REMOVED CODE => - background_edge_priority='10' 

 NEW OR CHANGED CODE => + background_edge_priority='9' 

 ---

 Actual changes below: 

��d i f f   - - g i t   a / R E A D M E . m d   b / R E A D M E . m d  
 i n d e x   6 9 6 7 c b f . . 6 1 d d 9 0 a   1 0 0 6 4 4  
 - - -   a / R E A D M E . m d  
 + + +   b / R E A D M E . m d  
 @ @   - 1 0 , 6   + 1 0 , 2 5   @ @   H O W   T O   R E A D :  
    
     A c t u a l   c h a n g e s   b e l o w :    
    
 + d i f f   - - g i t   a / R E A D M E . m d   b / R E A D M E . m d  
 + i n d e x   7 3 f a d 9 4 . . 6 9 6 7 c b f   1 0 0 6 4 4  
 + - - -   a / R E A D M E . m d  
 + + + +   b / R E A D M E . m d  
 + @ @   - 1 0 , 3   + 1 0 , 6   @ @   H O W   T O   R E A D :  
 +    
 +     A c t u a l   c h a n g e s   b e l o w :    
 +    
 + + d i f f   - - g i t   a / t e s t 2 . t x t   b / t e s t 2 . t x t  
 + + n e w   f i l e   m o d e   1 0 0 6 4 4  
 + + i n d e x   0 0 0 0 0 0 0 . . e 6 9 d e 2 9  
 + d i f f   - - g i t   a / t e s t . t x t   b / t e s t . t x t  
 + d e l e t e d   f i l e   m o d e   1 0 0 6 4 4  
 + i n d e x   9 1 3 2 c 6 6 . . 0 0 0 0 0 0 0  
 + - - -   a / t e s t . t x t  
 + + + +   / d e v / n u l l  
 + @ @   - 1   + 0 , 0   @ @  
 + - a s d f a s d f a s d f  
 + \   N o   n e w l i n e   a t   e n d   o f   f i l e  
   d i f f   - - g i t   a / t e s t 2 . t x t   b / t e s t 2 . t x t  
 - n e w   f i l e   m o d e   1 0 0 6 4 4  
 - i n d e x   0 0 0 0 0 0 0 . . e 6 9 d e 2 9  
 + d e l e t e d   f i l e   m o d e   1 0 0 6 4 4  
 + i n d e x   e 6 9 d e 2 9 . . 0 0 0 0 0 0 0  
 d i f f   - - g i t   a / e n t i t i e s / _ d e b u g / d e b u g _ m e n u . l u a   b / e n t i t i e s / _ d e b u g / d e b u g _ m e n u . l u a  
 i n d e x   9 1 7 b 2 c b . . 0 5 c f 2 d 5   1 0 0 6 4 4  
 - - -   a / e n t i t i e s / _ d e b u g / d e b u g _ m e n u . l u a  
 + + +   b / e n t i t i e s / _ d e b u g / d e b u g _ m e n u . l u a  
 @ @   - 3 8 7 , 6   + 3 8 7 , 3 2   @ @   m a i n _ m e n u _ i t e m s   =  
   	 	 	 C o n v e r t M a t e r i a l E v e r y w h e r e (   C e l l F a c t o r y _ G e t T y p e (   " l a v a "   ) ,   C e l l F a c t o r y _ G e t T y p e (   " r a d i o a c t i v e _ l i q u i d "   )   )  
   	 	 e n d  
   	 } ,  
 + 	 {  
 + 	 	 u i _ n a m e = " F u n g a l   s h i f t   w a t e r - > r o c k _ s t a t i c " ,  
 + 	 	 a c t i o n   =   f u n c t i o n ( )  
 + 	 	 	 C o n v e r t M a t e r i a l E v e r y w h e r e (   C e l l F a c t o r y _ G e t T y p e (   " w a t e r "   ) ,   C e l l F a c t o r y _ G e t T y p e (   " r o c k _ s t a t i c "   )   )  
 + 	 	 e n d  
 + 	 } ,  
 + 	 {  
 + 	 	 u i _ n a m e = " F u n g a l   s h i f t   r a d i o a c t i v e _ l i q u i d - > m a g i c _ l i q u i d _ p r o t e c t i o n _ a l l " ,  
 + 	 	 a c t i o n   =   f u n c t i o n ( )  
 + 	 	 	 C o n v e r t M a t e r i a l E v e r y w h e r e (   C e l l F a c t o r y _ G e t T y p e (   " r a d i o a c t i v e _ l i q u i d "   ) ,   C e l l F a c t o r y _ G e t T y p e (   " m a g i c _ l i q u i d _ p r o t e c t i o n _ a l l "   )   )  
 + 	 	 e n d  
 + 	 } ,  
 + 	 {  
 + 	 	 u i _ n a m e = " F u n g a l   s h i f t   a c i d - > s i m a " ,  
 + 	 	 a c t i o n   =   f u n c t i o n ( )  
 + 	 	 	 p r i n t ( t o _ s t r i n g ( C e l l F a c t o r y _ G e t T y p e (   " a c i d "   ) ) )  
 + 	 	 	 C o n v e r t M a t e r i a l E v e r y w h e r e (   C e l l F a c t o r y _ G e t T y p e (   " a c i d "   ) ,   C e l l F a c t o r y _ G e t T y p e (   " s i m a "   )   )  
 + 	 	 e n d  
 + 	 } ,  
 + 	 {  
 + 	 	 u i _ n a m e = " F u n g a l   s h i f t   a c i d - > b l o o d " ,  
 + 	 	 a c t i o n   =   f u n c t i o n ( )  
 + 	 	 	 p r i n t ( t o _ s t r i n g ( C e l l F a c t o r y _ G e t T y p e (   " a c i d "   ) ) )  
 + 	 	 	 C o n v e r t M a t e r i a l E v e r y w h e r e (   C e l l F a c t o r y _ G e t T y p e (   " a c i d "   ) ,   C e l l F a c t o r y _ G e t T y p e (   " b l o o d "   )   )  
 + 	 	 e n d  
 + 	 } ,  
   	 {  
   	 	 u i _ n a m e = " C o n v e r t M a t e r i a l O n A r e a I n s t a n t l y ( )   -   t e s t   n e a r   c a m e r a " ,  
   	 	 a c t i o n   =   f u n c t i o n ( )  
 d i f f   - - g i t   a / g e n e r a t e d / s p r i t e _ u v _ m a p s / d a t a . e n e m i e s _ g f x . t h u n d e r m a g e _ b i g . p n g   b / g e n e r a t e d / s p r i t e _ u v _ m a p s / d a t a . e n e m i e s _ g f x . t h u n d e r m a g e _ b i g . p n g  
 i n d e x   8 f f 4 3 9 3 . . 9 e c 5 6 9 5   1 0 0 6 4 4  
 B i n a r y   f i l e s   a / g e n e r a t e d / s p r i t e _ u v _ m a p s / d a t a . e n e m i e s _ g f x . t h u n d e r m a g e _ b i g . p n g   a n d   b / g e n e r a t e d / s p r i t e _ u v _ m a p s / d a t a . e n e m i e s _ g f x . t h u n d e r m a g e _ b i g . p n g   d i f f e r  
 d i f f   - - g i t   a / s c r i p t s / m a g i c / f u n g a l _ s h i f t . l u a   b / s c r i p t s / m a g i c / f u n g a l _ s h i f t . l u a  
 i n d e x   e e 7 3 4 9 8 . . 6 3 6 0 3 c e   1 0 0 6 4 4  
 - - -   a / s c r i p t s / m a g i c / f u n g a l _ s h i f t . l u a  
 + + +   b / s c r i p t s / m a g i c / f u n g a l _ s h i f t . l u a  
 @ @   - 1 3 5 , 9   + 1 3 5 , 9   @ @   f u n c t i o n   f u n g a l _ s h i f t (   e n t i t y ,   x ,   y ,   d e b u g _ n o _ l i m i t s   )  
   	 	 	 f r o m _ m a t e r i a l _ n a m e   =   s t r i n g . u p p e r (   G a m e T e x t G e t T r a n s l a t e d O r N o t (   C e l l F a c t o r y _ G e t U I N a m e (   C e l l F a c t o r y _ G e t T y p e (   f r o m . n a m e _ m a t e r i a l   )   )   )   )  
   	 	 e n d  
    
 - 	 	 - -   i f   a   p o t i o n   i s   e q u i p p e d ,   u s e   m a i n   m a t e r i a l   f r o m   p o t i o n   a s   o n e   o f   t h e   m a t e r i a l s  
 - 	 	 i f   h e l d _ m a t e r i a l   >   0   t h e n  
 - 	 	 	 i f   r a n d o m _ n e x t i (   r n d ,   1 ,   1 0 0   )   >   5 0   t h e n  
 + 	 	 - -   i f   a   p o t i o n   i s   e q u i p p e d ,   r a n d o m l y   u s e   m a i n   m a t e r i a l   f r o m   p o t i o n   a s   o n e   o f   t h e   m a t e r i a l s  
 + 	 	 i f   h e l d _ m a t e r i a l   >   0   a n d   r a n d o m _ n e x t i (   r n d ,   1 ,   1 0 0   )   < =   7 5   t h e n  
 + 	 	 	 i f   r a n d o m _ n e x t i (   r n d ,   1 ,   1 0 0   )   < =   5 0   t h e n  
   	 	 	 	 f r o m _ m a t e r i a l   =   h e l d _ m a t e r i a l  
   	 	 	 	 f r o m _ m a t e r i a l _ n a m e   =   s t r i n g . u p p e r (   G a m e T e x t G e t T r a n s l a t e d O r N o t (   C e l l F a c t o r y _ G e t U I N a m e (   f r o m _ m a t e r i a l   )   )   )  
   	 	 	 e l s e  
 