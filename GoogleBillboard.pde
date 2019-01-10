public final static String e = "2718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509244761460668082264800168477411853742345442437107539077744992069551702761838606261331384583000752044933826560297606737113200709328709127443747047230696977209310141692836819025515108657463772111252389784425056953696770785449969967946864454905987931636889230098793127736178215424999229576351482208269895193668033182528869398496465105820939239829488793320362509443";  
int x = 0;
double dNum; 
double xNum;
public void setup()  
{            

while (isPrime(dNum)==false) {
dNum = Double.parseDouble(e.substring(x,x+10));
x++;
}  
	System.out.println(dNum);

x=0;

for (int i = 0; i<6; i++) {
	x++;
	xNum = Double.parseDouble(e.substring(x+1,x+11));

		while (sumCheck(xNum)==false) {
			xNum = Double.parseDouble(e.substring(x,x+10));
			x++;
			}  
		}	
	System.out.println("f(6) is " + xNum);
	}  

public void draw()  
{   

}
public boolean sumCheck(double dNum) {
	int sum = 0;
	for (int i = 0; i<10; i++) {
		sum+=dNum%10;
		dNum=dNum/10;
	}
	if (sum == 49) {
		return true;
	}
	else return false;
}

public boolean isPrime(double dNum)  
{   
    if (dNum <= 1) {return false;}
  for  (int i=2;i <= Math.sqrt(dNum);i++) {
    if (dNum%i == 0) {
      return false;
    }
  }
   return true;
} 
