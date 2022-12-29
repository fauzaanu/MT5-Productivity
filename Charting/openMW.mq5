#property copyright "Copyright 2022, Fauzaan Gasim"
#property link      "https://www.fauzaanu.com"
#property version   "1.00"


void OnStart()
  {

// true makes sure we only include symbols from market watch
int allsyms= SymbolsTotal(true);

for (int i=0;i<allsyms;i++){
ChartOpen(SymbolName(i,true),PERIOD_CURRENT);
}
ChartClose(0);
  }

