function h = pdf2hist(d, f)

% allocate memory for h
h = zeros(1,length(d)-1);

% increase n for more accurate integral results
n = 100;

% allocate memory for subintervals
subinterval = zeros(1,n-1);

% compute the integral of f between spaces
% for the numerical integration use the composite trapezoidal rule
for i=1:1:length(h)
    a = d(i);
    b = d(i+1);
    for k = 1:1:n-1
        subinterval(k) = f(a+k*(b-a)/n);
    end
    subintervals = sum(subinterval);
    h(i) = ((b-a)/n)*((f(a)/2)+(f(b)/2)+subintervals);
    % alternative method - integral function of matlab
    %h(i) = integral(f,a,b);
end

% check if sum(h) is equal to 1
% if not normalize the values of h
e=sum(h);
if e~=1
    for i=1:1:length(h)
        h(i)=h(i)/e;
    end
end

end

