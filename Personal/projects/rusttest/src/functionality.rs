
pub fn sumeven(bottom: i32, top: i32)->i32{
    return (bottom..=top)
        .filter(|e| e % 2 == 0)
        .sum();
}

pub fn max(arr: [i32; 10]) -> Result::<i32, ()>
{
    if arr.len() > 0 {
        // find max
        let mut max: i32 = arr[0];

        for i in 1..arr.len(){
            if arr[i] > max {
                max = arr[i];//.expect("REASON");
            }
        }
        return Ok::<i32,()>(max);
    } else {
        return Err::<i32,()>(());
    }
}



