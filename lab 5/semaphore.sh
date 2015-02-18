private int n;
private final Semaphore semaphore = new Semaphore(1);
private boolean isProduced = false;

public synchronized boolean isProduced() {
    return isProduced;
}

public synchronized void setProduced(boolean isProduced) {
    this.isProduced = isProduced;
}

public QUsingSemaphore(){

}

public void produce(int n){
    try{
        if(!isProduced()){
            semaphore.acquire();
            setN(n);
            System.out.println("Produced.... "+n);
            setProduced(true);
        }
    }catch(InterruptedException ex){
        ex.printStackTrace();
    }
    finally{
        semaphore.release();
    }

    try{
        Thread.sleep(1000);
    }catch(InterruptedException ex){
        ex.printStackTrace();
    }
}

public void consume(){
    try{
        if(isProduced()){
            semaphore.acquire();
            System.out.println("Consumed... "+getN());
            setProduced(false);
        }
    }catch(InterruptedException ex){
        ex.printStackTrace();
    }
    finally{
        semaphore.release();
    }
    try{
        Thread.sleep(1000);
    }catch(InterruptedException ex){
        ex.printStackTrace();
    }
}

public synchronized int getN() {
    return n;
}

public synchronized void setN(int n) {
    this.n = n;
}
}
