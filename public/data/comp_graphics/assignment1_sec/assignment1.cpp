#include <GL/glut.h>
// #include <GL/glew.h>
#include <cmath>

void display()
{
   glClearColor(0, 0, 0, 0);
   glClear(GL_COLOR_BUFFER_BIT);

   glColor3f(1.0f, 0.0f, 0.0f);
   // roof
   glBegin(GL_TRIANGLES);
   glVertex2f(0.35, 0.3);
   glVertex2f(-0.35, 0.3);
   glVertex2f(0, 0.8);
   glEnd();

   // body
   glBegin(GL_POLYGON);
   glVertex2f(0.35, 0.3);
   glVertex2f(-0.35, 0.3);
   glVertex2f(-0.35, -0.6);
   glVertex2f(0.35, -0.6);
   glEnd();

   glColor3f(1, 1, 0);
   // windows
   glBegin(GL_POLYGON);
   glVertex2f(0.1, 0);
   glVertex2f(0.25, 0);
   glVertex2f(0.25, 0.15);
   glVertex2f(0.1, 0.15);
   glEnd();

   glBegin(GL_POLYGON);
   glVertex2f(-0.1, 0);
   glVertex2f(-0.25, 0);
   glVertex2f(-0.25, 0.15);
   glVertex2f(-0.1, 0.15);
   glEnd();

   //door
   glBegin(GL_POLYGON);
   glVertex2f(-0.1, -0.16);
   glVertex2f(-0.1, -0.6);
   glVertex2f(0.1, -0.6);
   glVertex2f(0.1, -0.16);
   glEnd();


   glFlush(); // Render now
}
int main(int argc, char **argv)
{
   glutInit(&argc, argv);
   glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);
   glutInitWindowSize(500, 500);
   glutInitWindowPosition(100, 100);
   glutCreateWindow("My First Window");
   glutDisplayFunc(display);
   glutMainLoop();
   return 0;
}