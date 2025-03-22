module Submission where

import Data.Char 
import Data.List


-- Question 1
-- Calculates the cost using mathematical opertaions to provide a rounded answer 
pizzaPricing :: Float -> Int -> Int -> Float
pizzaPricing diam top sau =
    let baseCost = 0.002 * pi * ((diam / 2) ^ 2)  
        toppingCost = 0.001 * pi * (diam / 2) ^ 2 * fromIntegral top 
        sauceCost = 0.5 * fromIntegral sau  
        totalCost = 1.5 * (baseCost + toppingCost + sauceCost)  
    in fromIntegral (round (totalCost * 100)) / 100  


