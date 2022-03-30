N, K = map(int, input().split())
dp = [[1] + [0] * N for _ in range(K + 1)]
dp[1] = [1] * (N + 1)
for i in range(2, K + 1):
    for j in range(1, N + 1):
        dp[i][j] = (dp[i - 1][j] + dp[i][j - 1]) % int(1e9)
print(dp[K][N])