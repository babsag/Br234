.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzor;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# static fields
.field private static zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/y5;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static declared-synchronized zza(Lcom/google/android/gms/internal/mlkit_vision_text_common/zznx;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzor;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzor;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/y5;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/y5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/y5;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzop;)V

    sput-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzor;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/y5;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzor;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/y5;

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzor;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznx;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;->zzd()Lcom/google/android/gms/internal/mlkit_vision_text_common/zznx;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzor;->zza(Lcom/google/android/gms/internal/mlkit_vision_text_common/zznx;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
