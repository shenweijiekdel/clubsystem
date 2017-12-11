package web2017.team9.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class PageAccessCtl {
    @Around("execution( * web2017.team9.controller.HomeController.*(..))")
    public Object access(ProceedingJoinPoint joinPoint){
        Object param = null;
        try {
            System.out.println("aa");
            param = joinPoint.proceed();
            System.out.println("bb");
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        return param;
    }
}
