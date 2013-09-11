package model;

/**
 *
 * @author Mark Van Weelden
 */
public class TriangleCalculator {
    
    public final double getHypotenuse(double sideA, double sideB){
        
        return Math.sqrt((sideA * sideA) + (sideB * sideB));
    }
    
}
