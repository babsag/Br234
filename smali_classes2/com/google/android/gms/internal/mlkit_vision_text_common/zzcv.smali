.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field private zza:I

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcy;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcy;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcy;

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zza:I

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcz;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/z0;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzcy;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/z0;-><init>(ILcom/google/android/gms/internal/mlkit_vision_text_common/zzcy;)V

    return-object v0
.end method
