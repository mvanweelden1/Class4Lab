package model;

/**
 *
 * @author Mark Van Weelden
 */
public class RectangleCalculator {
    
    public final double getArea(String length, String width){
        
        return Double.parseDouble(length) * Double.parseDouble(width);
    }
    
}
