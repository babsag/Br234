.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzli;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.2.1"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_common/h4;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static declared-synchronized zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzkt;)Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzli;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzli;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/h4;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/h4;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/h4;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzlg;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzli;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/h4;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzli;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/h4;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;
    .locals 1

    const-class p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzli;

    monitor-enter p0

    :try_start_0
    const-string v0, "vision-common"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkt;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_common/zzks;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzks;->zzd()Lcom/google/android/gms/internal/mlkit_vision_common/zzkt;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzli;->zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzkt;)Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
