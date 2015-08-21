def kobai(a,b,ans=[])
  ary1=(1..a).map {|i| b*i }
  ary2=(1..b).map {|i| a*i }

  if ary1.size > ary2.size
    for i in 0..ary2.size
      ans << ary2[i] if ary1.include?(ary2[i])
    end
  else
    for i in 0..ary1.size
      ans << ary1[i] if ary2.include?(ary1[i])
    end
  end
  ans.min
end

[*(1..20)].inject do |x, y|
  kobai(x,y)
end
#232792560
