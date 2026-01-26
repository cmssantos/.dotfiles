alias dnb='dotnet build'
alias dnr='dotnet run'
alias dnw='dotnet watch run'
alias dnt='dotnet test'
alias dntr='dotnet test --no-build'
alias dncr='dotnet clean && dotnet restore'

dnrun() {
  ASPNETCORE_ENVIRONMENT=Development dotnet run
}
