// ConsoleApplication1.cpp : コンソール アプリケーションのエントリ ポイントを定義します。
//

#include "stdafx.h"
#include <cstdlib>

int main()
{
#ifdef _DEBUG
	puts("Debug");
#else
	puts("Release");
#endif

	system("PAUSE");
    return 0;
}

