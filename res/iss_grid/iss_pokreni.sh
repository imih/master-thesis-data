export I_MPI_SHM_LMT=shm
for i in {1..50}
do
for p in {1..9}
  do
    mpiexec -n 16 main_sis -p $p -q 0 -n 30
    mpiexec -n 16 main_sis -p $p -q 5 -n 30
    mpiexec -n 16 main_sis -p $p -q 10 -n 30
done
done

