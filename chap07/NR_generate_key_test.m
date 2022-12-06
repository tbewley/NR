% script NR_generate_key_test
% Generates a "key" from some integer data, for use in a dictionary (hash) function
% Numerical Renaissance codebase, Chapter 7, https://github.com/tbewley/NR
% Copyright 2022 by Thomas Bewley, distributed under BSD 3-Clause License. 

clear, N_bits=16, N_data=4   % Setup.  Need N_bits*N_data<=64.
lower_limit=0                % The integer limits within which the data must lie.
upper_limit=2^N_bits-1   
fac=uint64(2^N_bits)
hash=uint64(0);

% Generate some random int64 test data within these limits.
data=randi([lower_limit upper_limit],1,N_data);  data=uint64(data)

% The following single line generates the key
for i=1:N_data; hash=hash+data(i)*fac^(i-1); end, hash

% Extract data from the key
for i=N_data:-1:1,
    data_check(i)=idivide(hash,fac^(i-1),'floor');
    hash=hash-data_check(i)*fac^(i-1);
end

data_check