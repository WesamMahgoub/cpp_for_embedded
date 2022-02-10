#include <iostream>
#include <string>
#include <sstream>

using std::string;
using std::cout;
using std::endl;
using std::cin;
using std::stringstream;

int main (void)
{
    int no_of_testcase,*cases,**counter;
    string s;

    cin >> no_of_testcase;
     cases = (int*)malloc(sizeof(int)*no_of_testcase);
     counter = (int**)malloc(sizeof(int)*no_of_testcase);

    for(int i = 0;i < no_of_testcase; i++)
    {

        cin >> cases[i];
        counter[i] = (int*)malloc(sizeof(int)*4);
        counter[i][0]=counter[i][1]=counter[i][2]=counter[i][3]=0;
    }
    for(int i = 0; i < no_of_testcase; i++)
    {
        for(int j = 0; j < cases[i]; j++)
        {
            fflush(stdin);
            std::getline(cin,s,'\n');
            int temp = s.find_last_of(".");
            int var = 0;
            stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
           // cout << temp<<" extention is " <<s.substr(temp+1,3) << s << endl;
            if(s.substr(temp+1,3) == "mp3")
            {

                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                //cout << s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1) << endl;
                str >> var;
                //cout<<"size of mp3 = "<<var<<endl;
                counter[i][0] += var;
            }
            else if(s.substr(temp+1,3) == "mkv")
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                //cout << s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1) << endl;
                str >> var;
                //cout<<"mkv = "<<var;
                counter[i][2] += var;
            }
            else if(s.substr(temp+1,3) == "acc")
            {
                //cout<<"IN acc \n";
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
                //cout<<"acc = "<<var;
                counter[i][0] += var;
            }
            else if(s.substr(temp+1,4) == "flac")
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
                counter[i][0] += var;
            }
            else if(s.substr(temp+1,3) == "jpg")
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
                counter[i][1] += var;
            }
            else if(s.substr(temp+1,3) == "avi")
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
                counter[i][2] += var;
            }
            else if(s.substr(temp+1,3) == "bmp")
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
                counter[i][1] += var;
            }
            else if(s.substr(temp+1,3) == "gif")
            {
                //stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
                counter[i][1] += var;
            }
            else if(s.substr(temp+1,3) == "mp4")
            {
               // stringstream str(s.substr(s.find_last_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
                counter[i][2] += var;
            }
            else
            {
                //stringstream str(s.substr(s.find_first_of(' ')+1,s.find_last_of('b')-s.find_last_of(' ')+1));
                str >> var;
                counter[i][3] += var;
            }
        }

    }
    for(int i = 0;i < no_of_testcase; i++)
    {
        cout << "\nmusic " << counter[i][0] << "b images " << counter[i][1] << "b movies " << counter[i][2] << "b other " << counter[i][3] << "b";
    }
    return 0;
}
