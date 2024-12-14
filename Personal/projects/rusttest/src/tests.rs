

#[cfg(test)]
mod tests{
    use crate::sumeven;
    use crate::max;

    #[test]
    fn sumeven_test() {
        let a: i32 = sumeven(1,10);
        assert_eq!(a, 30);
    }
    #[test]
    fn max_test() {
        let array: [i32; 10] = [1,7,2,5,1,3,8,2,0,1];
        let a: i32 = max(array).expect("Array out of bounds durante chiamata a max(elementi);");
        assert_eq!(a, 8);
    }
}

