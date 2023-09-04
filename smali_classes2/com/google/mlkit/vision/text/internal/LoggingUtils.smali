.class public final Lcom/google/mlkit/vision/text/internal/LoggingUtils;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;
    .locals 1
    .param p0    # I
        .annotation build Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface$LanguageOption;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;->zzf:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;->zze:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;

    return-object p0
.end method

.method static b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;ZLcom/google/android/gms/internal/mlkit_vision_text_common/zzks;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/mlkit/vision/text/internal/zzj;

    invoke-direct {v0, p1, p2}, Lcom/google/mlkit/vision/text/internal/zzj;-><init>(ZLcom/google/android/gms/internal/mlkit_vision_text_common/zzks;)V

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;->zzi:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;->zzf(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoe;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;)V

    return-void
.end method
