.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.2.1"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;IIJIIII)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;->zzc(IIJIIII)Lcom/google/android/gms/internal/mlkit_vision_common/zzlj;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzby:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;->zzc(Lcom/google/android/gms/internal/mlkit_vision_common/zzlj;Lcom/google/android/gms/internal/mlkit_vision_common/zzht;)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;IIJIIII)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlk;->zzc(IIJIIII)Lcom/google/android/gms/internal/mlkit_vision_common/zzlj;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_common/zzht;->zzbX:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;->zzc(Lcom/google/android/gms/internal/mlkit_vision_common/zzlj;Lcom/google/android/gms/internal/mlkit_vision_common/zzht;)V

    return-void
.end method

.method private static zzc(IIJIIII)Lcom/google/android/gms/internal/mlkit_vision_common/zzlj;
    .locals 12

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v11, Lcom/google/android/gms/internal/mlkit_vision_common/zzlj;

    sub-long v8, v0, p2

    move-object v2, v11

    move v3, p0

    move v4, p1

    move/from16 v5, p6

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_common/zzlj;-><init>(IIIIIJI)V

    return-object v11
.end method
