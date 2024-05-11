tol = 1e-7;
mu = 398600;
R1 = [-294.32 4265.1 5986.7];
R2 = [-1365.5 3637.6 6346.8];
R3 = [-2940.3 2473.7 6555.8];
%...Magnitudes of R1, R2 and R3:
r1 = norm(R1);
r2 = norm(R2);
r3 = norm(R3);
%...Cross products among R1, R2 and R3:
c12 = cross(R1,R2);
c23 = cross(R2,R3);
c31 = cross(R3,R1);
R1_unitvector=R1/norm(R1);
C23_unitvector=c23/norm(c23);
%...Check that R1, R2 and R3 are coplanar
if abs(dot(R1_unitvector, C23_unitvector))>tol

%...Equation 5.13:
N = r1*c23 + r2*c31 + r3*c12;
%...Equation 5.14:
D = c12 + c23 + c31;
%...Equation 5.21:
S = R1*(r2 - r3) + R2*(r3 - r1) + R3*(r1 - r2);
%...Equation 5.22:
V1 = sqrt(mu/(norm(N)*norm(D)))*(cross(D,R1)/r1 + S);
V2 = sqrt(mu/(norm(N)*norm(D)))*(cross(D,R2)/r2 + S);
V3 = sqrt(mu/(norm(N)*norm(D)))*(cross(D,R3)/r3 + S);
a=dot(R1_unitvector, C23_unitvector);
fprintf('–––––––––––––––––––––––––––––––––––––––––––––––––––––')
fprintf('\n Example 5.1: Gibbs Method\n')
fprintf('\n v1 (km/s) = [%g %g %g]', V1(1), V1(2), V1(3))
fprintf('\n v2 (km/s) = [%g %g %g]', V2(1), V2(2), V2(3))
fprintf('\n v3 (km/s) = [%g %g %g]\n', V3(1), V3(2), V3(3))
else
 fprintf('GIBBS Method is unvalid,These vectors are noncoplanar\n')
end
