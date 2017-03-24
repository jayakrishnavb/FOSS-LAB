import sys
from PyQt4 import QtGui, QtCore
from PyQt4.QtCore import Qt
from math import sqrt
 
num = 0.0
newNum = 0.0
sumAll = 0.0
operator = ""
 
opVar = False
sumIt = 0
 
class Main(QtGui.QMainWindow):
 
    def __init__(self):
        QtGui.QMainWindow.__init__(self)
        self.initUI()
 
    def initUI(self):
 
        self.line = QtGui.QLineEdit(self)
        self.line.move(5,5)
        self.line.setReadOnly(True)
        self.line.setAlignment(Qt.AlignRight)
        self.line.resize(200,25)
 
	#chagne this part to add buttons

        zero = QtGui.QPushButton("0",self)
        zero.move(10,40)
        zero.resize(35,30)
 
        one = QtGui.QPushButton("1",self)
        one.move(50,40)
        one.resize(35,30)
 
   
        minus = QtGui.QPushButton("-",self)
        minus.move(10,80)
        minus.resize(35,30)
 
        plus = QtGui.QPushButton("+",self)
        plus.move(50,80)
        plus.resize(35,30)
 
 
        equal = QtGui.QPushButton("=",self)
        equal.move(90,40)
        equal.resize(35,65)
        equal.clicked.connect(self.Equal)
        #Connect call is used to connect to the user-defined function to be called on click
   
 
        nums = [zero,one]
 
        ops = [minus,plus,equal]
        for i in nums:
            i.clicked.connect(self.Nums)
        for i in ops:
            i.clicked.connect(self.Operator)	
        
        self.setGeometry(300,300,210,220)
        self.setFixedSize(210,220)
        self.setWindowTitle("")
        self.setWindowIcon(QtGui.QIcon(""))
        self.show()
 
    def Nums(self):
        global num
        global newNum
        global opVar
         
        sender = self.sender()
         
        newNum = int(sender.text())
        setNum = str(newNum)
 
 
        if opVar == False:
            self.line.setText(self.line.text() + setNum)
 
 
        else:
            self.line.setText(setNum)
            opVar = False


    def Operator(self):
        global num
        global opVar
        global operator
        global sumIt
 
        sumIt += 1
 
        if sumIt > 1:
            self.Equal()
 
        num = self.line.text()
 
        sender = self.sender()
 
        operator = sender.text()
         
        opVar = True
 
 
 
    def Equal(self):
        global num
        global newNum
        global sumAll
        global operator
        global opVar
        global sumIt
 
        sumIt = 0
 
        newNum = self.line.text()
 
        print(num)
        print(newNum)
        print(operator)
         
        if operator == "+":
            sumAll = float(num) + float(newNum)
 
        elif operator == "-":
            sumAll = float(num) - float(newNum)
             
        print(sumAll)
        self.line.setText(str(sumAll))
        opVar = True
 
 
def main():
    app = QtGui.QApplication(sys.argv)
    main= Main()
    main.show()
 
    sys.exit(app.exec_())
 
if __name__ == "__main__":
    main()
