program codelabsalgoritma;
uses crt;

   const
   password =1234;

var
   pass, k, m : integer;
   i, j, n : integer;
   menu : integer;
   a, jumayam : integer;
   x, akhir :   integer;
   jumlah   :   integer;

begin
     k:= 1;
     m:= 3;
     repeat
           write('Masukkan Password (',k,'):  '); readln(pass);
           if(pass=password)
           then
           begin
                writeln('Password anda benar!');
                writeln;
                writeln('Tekan enter untuk melanjutkan ke Menu....');
                readkey;
           end
           else
           begin
                k:= k+1;
                m:= m-1;
                writeln('Password salah (',m,' kali lagi)!');
                readkey;
           end;
      until (pass=password)or (k=4);

     textbackground(3); clrscr;

            writeln('=============================');
            writeln('        Menu                 ');
            writeln(' ============================');
            writeln('| 1. Kasus Anak Ayam          |');
            writeln('| 2. Jumlah Bilangan Genap    |');
            writeln('| 3. Tampilan Angka Segitiga  |');
            writeln('| 4. keluar                   |');
            writeln(' ============================');
            write(' |   Masukkan Pilihan [1...4] : '); readln(menu);

            case menu of
            1: begin
                    clrscr;
                    write('Masukkan jumlah anak Ayam :  ');  readln(a);
                    for jumayam:= 1 to a do
                   begin
                   write('Anak ayam turunlah ',a,' mati satu tinggal ');
                   a := a-1;
                   if a = 0 then
                   begin
                   writeln('induknya');
                   end
                   else
                   begin
                   writeln(a);
                   end
                   end;
                   readln;
            end;
            2:  begin
                     clrscr;
                     write('Masukkan Batas Bilangan : '); readln(akhir);
                     write('Jumlah Bilangan Genap =  ');
                      jumlah:=0;
                      for x:= 1 to akhir do
                      begin
                           if x mod 2 = 0 then
                              jumlah:=jumlah+x;
                      end;
                      for akhir:= 2 to akhir do
                          begin
                          if(akhir mod 2=0) then
                          write(akhir, ' + ');
                          end;
                          writeln;
                          writeln('                      = ',jumlah);
                          writeln;
                          readkey;
            end;
            3: begin
                    clrscr;
                    write ('masukan angka : ');readln(n);
                    for i := 1 to n do
                    begin
                    for j := 1 to i do
                    write(j);
                    readln;
                    end;

            end;
            4: begin
                clrscr; textcolor(black);
                write('Terima Kasih telah menggunakan Program ini!');
                writeln;
                textcolor(red);
                writeln('Tekan Enter untuk keluar dari program.. ');
                readkey;
            end;
            else
            write('Pilihan tidak ada')
            end
end.
