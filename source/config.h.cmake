////////


#cmakedefine01 INCLUDE__STM32CUBEF2

#if (INCLUDE__STM32CUBEF2 == 1)

#define STM32CUBEF2__BOARD_NAME "@STM32CUBEF2__BOARD_NAME@"

#cmakedefine01 STM32CUBEF2__USE_HAL_DRIVER

#cmakedefine01 STM32CUBEF2__USE_FULL_LL_DRIVER

#endif /* (INCLUDE__STM32CUBEF2 == 1) */

