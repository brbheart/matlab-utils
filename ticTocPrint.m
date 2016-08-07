% function: print alternately (time > 1 seconds)
function ticTocPrint(fmt, varargin)

persistent th;

if isempty(th)
  th = tic();
end
if toc(th) > 1
  fprintf(fmt, varargin{:});
  drawnow;
  th = tic();
end

end