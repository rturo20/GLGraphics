import Foundation
import OpenGL3

#if os(OSX)
	import OpenGL
#endif


public struct GLGraphics {

	public init() {}

	public func drawCircle(red: Float, green: Float, blue: Float, radius: Float) {

		let deg2Rad: Float = 3.14159 / 180.0
		glColor3f(red, green, blue)
		glBegin(UInt32(GL_LINE_LOOP))

		for i in 0...360 {
			let degInRad: Float = Float(i) * deg2Rad
			glVertex2f((cos(degInRad) * radius / 450), (sin(degInRad) * radius / 450))
		}

		glEnd()
	}


	public func drawQuad(red: Float, green: Float, blue: Float, x1: Float, y1: Float, x2: Float, y2: Float, x3: Float, y3: Float, x4: Float, y4: Float) {

		// Draw a square/rectangle using the (deprecated) fixed pipeline functionality
		glColor3f(red, green, blue)
	        glBegin(UInt32(GL_QUADS))
	        glVertex2f(x1, y1)
	        glVertex2f(x2, y2)
	        glVertex2f(x3, y3)
	        glVertex2f(x4, y4)
	        glEnd()
	}


	public func drawTriangle(red: Float, green: Float, blue: Float, x1: Float, y1: Float, x2: Float, y2: Float, x3: Float, y3: Float) {

		// Draw a square using the (deprecated) fixed pipeline functionality
	        glColor3f(red, green, blue)
	        glBegin(UInt32(GL_TRIANGLES))
	        glVertex2f(x1, y1)
	        glVertex2f(x2, y2)
	        glVertex2f(x3, y3)
	        glEnd()
	}

}

