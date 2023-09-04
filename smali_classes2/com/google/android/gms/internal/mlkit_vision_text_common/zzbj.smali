.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbj;
.super Lcom/google/android/gms/internal/mlkit_vision_text_common/c0;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/c0;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/c0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbj;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/c0;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_text_common/c0;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/c0;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/c0;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/c0;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;->zzi([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    move-result-object v0

    return-object v0
.end method
