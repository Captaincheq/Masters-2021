%Proposed ALgorithm
clear
%Parameters
%General
%N = 1000; %number of files transfered
N = [10 50 100 200 300 400 500 600];


%For Our  Algorithm
Cipher_size_proposed = 104; %storage
Key_exch_time_proposed = 26.5;
Encrypt_time_proposed = 16;
Decrypt_time_proposed = 12;


Bandwidth_use_proposed = 52;
CPU_use_proposed = 0.04; %percent per task


%Plots1
%%MEMORYUSAGE
Total_memory_usage = N.*Cipher_size_proposed;

%%BANDWIDTH USAGE
BANDWIDTH_proposed = N.*Bandwidth_use_proposed;


%EXECUTION TIME
Total_Encryption_time = N.*Encrypt_time_proposed;
Total_Decryption_time = N.*Decrypt_time_proposed;
Total_Execution_time_proposed = Total_Encryption_time + Total_Decryption_time + Key_exch_time_proposed;


%CPU  USAGE
Total_CPU_Usage_proposed = N*CPU_use_proposed;


%STORAGE USE
Total_storage = N.*Cipher_size_proposed;

%Bandwidth USAGE
%Total_bandwidth = N.*Bandwidth_use_proposed;
%figure
%bar(N,Total_bandwidth)
%grid on
%title('Bandwidth use for different task numbers');
%xlabel('Number of tasks');
%ylabel('Total Bandwidth required (KB)');
%xlim([0 800])
%xticks(0:50:800)
%yticks(0:max(Total_bandwidth))

%CPU usage% vs task size
%figure
%bar(N,Total_CPU_Usage_proposed)
%grid on
%title('CPU power use for different task numbers');
%xlabel('Number of tasks');
%ylabel('Percentage CPU Power required (%)');
%xlim([0 800])
%%xticks(0:50:800)

%PLOTS
%Encryption and Decryption
%figure
%z = bar(N,Total_Encryption_time);
%set(z(1), 'Facecolor','r')
%grid on
%title('Encryption time for different task numbers');
%xlabel('Number of tasks');
%ylabel('Total Encryption time(sec)');
%xlim([0 800])
%xticks(0:50:800)

%figure
%z = bar(N,Total_Decryption_time);
%set(z(1), 'Facecolor','r')
%bar(N,Total_Decryption_time)
%grid on
%title('Decryption time for different task numbers');
%xlabel('Number of tasks');
%ylabel('Total Decryption time(sec)');
%xlim([0 800])
%xticks(0:50:800)


%figure
%bar(N,compare)
%grid on
%title('Comparison of Encryption and Decryption time');
%xlabel('Number of tasks');
%ylabel('Total Encryption and Decryption time(sec)');
%xlim([0 700])

%legend('Encryption time', 'Decryption time','Difference')


%OTHER ALGORITHMS
%For Algorithm Altrtnative 1
Cipher_size_algo1 = 104; %storage
Key_exch_time_algo1 = 30;
Encrypt_time_algo1 = 12;
Decrypt_time_algo1 = 17;


Bandwidth_use_algo1 = 60;
CPU_use_algo1 = 0.06; %percent per task


%%MEMORYUSAGE
Algo1_memory_usage = N.*Cipher_size_algo1;

%CPU  USAGE
CPU_Usage_Algo1 = N*CPU_use_algo1;
%%BANDWIDTH USAGE
BANDWIDTH_Algo1 = N.*Bandwidth_use_algo1;



%EXECUTION TIME
Algo1_Encryption_time = N.*Encrypt_time_algo1;
Algo1_Decryption_time = N.*Decrypt_time_algo1;
Algo1_Execution_time = Algo1_Encryption_time + Algo1_Decryption_time + Key_exch_time_algo1;


%ALGORITHM2

%STORAGE USE
Algo1_storage = N.*Cipher_size_algo1;


%ALGORITHM2
Cipher_size_algo2 = 250; %storage
Key_exch_time_algo2 = 55;
Encrypt_time_algo2 = 25;
Decrypt_time_algo2 = 20;


Bandwidth_use_algo2 = 100;
CPU_use_algo2 = 0.08; %percent per task


%Plots1
%%MEMORYUSAGE
Algo2_memory_usage = N.*Cipher_size_algo2;

%CPU  USAGE
CPU_Usage_Algo2 = N.*CPU_use_algo2;
%%BANDWIDTH USAGE
BANDWIDTH_Algo2 = N.*Bandwidth_use_algo2;

%EXECUTION TIME
Algo2_Encryption_time = N.*Encrypt_time_algo2;
Algo2_Decryption_time = N.*Decrypt_time_algo2;
Algo2_Execution_time = Algo2_Encryption_time + Algo2_Decryption_time+ Key_exch_time_algo2;%%%


%ALGORITHM2

%STORAGE USE
Algo2_storage = N.*Cipher_size_algo2;

%PLOTTING COMPARISONS
%1. Memory use
figure
MEMORY = [Total_memory_usage; Algo1_memory_usage; Algo2_memory_usage];
bar(N,MEMORY)
grid on
title('Memory Usage Under Different Task Sizes');
xlabel('Number of tasks');
ylabel('Total Memory Usage(KB)');
xlim([0 700])
xticks(0:50:700)
legend('Proposed ECC ElGalmal','Existing ECC', 'Reed Solomon Encryption')


%2. Bandwidth use
figure
BANDWIDTH = [BANDWIDTH_proposed; BANDWIDTH_Algo1; BANDWIDTH_Algo2];
bar(N,BANDWIDTH)
grid on
title('Bandwidth Usage for various Algorithms');
xlabel('Number of tasks');
ylabel('Total Bandwidth Usage (KB)');
xlim([0 700])
xticks(0:50:700)
legend('Proposed ECC ElGalmal','Existing ECC', 'Reed Solomon Encryption')


%3. CPU Use(%)
figure
CPU = [Total_CPU_Usage_proposed; CPU_Usage_Algo1; CPU_Usage_Algo2];
bar(N,CPU)
grid on
title('CPU usage under different algorithms for different task numbers');
xlabel('Number of tasks');
ylabel('Total CPU Usage (%)');
xlim([0 700])
xticks(0:50:700)
legend('Proposed ECC ElGalmal','Existing ECC', 'Reed Solomon Encryption')


%4. Total Execution Time (Encrypt + Decrypt + Key Exchange)
figure
EXECUTE = [Total_Execution_time_proposed; Algo1_Execution_time; Algo2_Execution_time];
bar(N,EXECUTE)
grid on
title('Execution time for different task numbers');
xlabel('Number of tasks');
ylabel('Total Task Execution time(sec)');
xlim([0 700])
xticks(0:50:700)
legend('Proposed ECC ElGalmal','Existing ECC', 'Reed Solomon Encryption')


file_size = [10,20,30,40,50];
model_encrypt = [58 78; 62 85; 146 177; 185 231; 228 256];
plot(file_size,model_encrypt,'-*')
grid on
title('Encryption time for different file sizes');
xlabel('File sizes (KB)');
ylabel('Total Encryption and Decrption times (sec)');
xlim([0 60])
legend('Encryption time', 'Decryption time')


plot(file_size,model_encrypt)

