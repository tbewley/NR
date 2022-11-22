% script NR_generate_hash_fn_test
% Tests the code NR_generate_hash_fn
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

clear, N_bits=13, N_data=4   % FIRST, a small example, which generates a single integer hash.
q_bit=quantizer('fixed',[N_bits 0]);            % Prepare to make some N_bit 2's complement numbers. 
[lower_limit,upper_limit]=range(q_bit)          % These are integer limits within which the data must lie.
data=randi([lower_limit upper_limit],N_data,1)  % Generate some random test data within these limits.

hash_fn=NR_generate_hash_fn(data,N_bits,N_data) % Generate the hash function as a single integer

q_hash=quantizer('fixed',[N_bits*N_data 0]);
hash_check=num2bin(q_hash,hash_fn)              % Convert hash back to binary form.
data_check_b='';
for i=1:N_bits, for j=1:N_data,                 % Extract the data from binary form of the hash function.
    data_check_b(j,i)=hash_check(1,(i-1)*N_data+j); 
end, end, data_check=bin2num(q_bit,data_check_b) 

clear, N_bits=18, N_data=6 % SECOND, a big example, which generates a hash as a pair of integers.
q_bit=quantizer('fixed',[N_bits 0]);            % Prepare to make some N_bit 2's complement numbers. 
[lower_limit,upper_limit]=range(q_bit)          % These are integer limits within which the data must lie.
data=randi([lower_limit upper_limit],N_data,1)  % Generate some random test data within these limits.

hash_fn=NR_generate_hash_fn(data,N_bits,N_data) % Generate the hash function as a single integer

half_hash=ceil(N_bits*N_data/2);
q_hash=quantizer('fixed',[half_hash 0]);
hash_check_a=num2bin(q_hash,hash_fn(1));
hash_check_b=num2bin(q_hash,hash_fn(2));
hash_check=[hash_check_a hash_check_b]
data_check_b='';
for i=1:N_bits, for j=1:N_data,                 % Extract the data from binary form of the hash function.
    data_check_b(j,i)=hash_check(1,(i-1)*N_data+j); 
end, end, data_check=bin2num(q_bit,data_check_b) 
