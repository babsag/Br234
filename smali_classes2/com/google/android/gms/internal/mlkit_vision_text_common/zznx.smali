.class public abstract Lcom/google/android/gms/internal/mlkit_vision_text_common/zznx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/w5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/w5;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/w5;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;->zza(Z)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;->zzb(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb()Ljava/lang/String;
.end method

.method public abstract zzc()Z
.end method
