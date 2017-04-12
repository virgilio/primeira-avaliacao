T = 'Team'
N = 'Nama'

def div_by(n, d)
  if d == 0 then 
    return false
  else 
    return n%d == 0
  end
end

def full_if_onliner
  return (1...101).to_a.map{|n| if n%35 == 0 then [N, T].join(' ') elsif n%7 == 0 then T elsif n%5 == 0 then N else n end}.join(', ') + ''
end

def ternary_onliner
  return (1...101).to_a.map{|n| div_by(n,5) ? [N, div_by(n,7) ? " #{T}" : ''].join('') : div_by(n,7) ? T : n}.join(', ') + ''
end
