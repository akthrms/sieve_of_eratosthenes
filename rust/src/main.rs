fn main() {
    println!("{:?}", sieve(100));
}

fn sieve(n: usize) -> Vec<usize> {
    if n < 2 {
        panic!("n is more than 2")
    }

    let mut primes = vec![];

    let mut is_prime = vec![true; n + 1];
    is_prime[0] = false;
    is_prime[1] = false;

    for i in 0..n + 1 {
        if !is_prime[i] {
            continue;
        }

        primes.push(i);

        for j in (i.pow(2)..n + 1).step_by(i) {
            is_prime[j] = false;
        }
    }

    primes
}

#[cfg(test)]
mod tests {
    use crate::sieve;

    #[test]
    fn test() {
        assert_eq!(
            sieve(100),
            vec![
                2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79,
                83, 89, 97
            ]
        );
    }
}
