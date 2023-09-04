.class public final synthetic Lcom/google/mlkit/vision/text/internal/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;


# instance fields
.field public final synthetic zza:Landroid/graphics/Matrix;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzd;->zza:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v5, p0, Lcom/google/mlkit/vision/text/internal/zzd;->zza:Landroid/graphics/Matrix;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    .line 2
    invoke-static {v0}, Lcom/google/mlkit/vision/text/internal/a;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;)Ljava/util/List;

    move-result-object v3

    new-instance v9, Lcom/google/mlkit/vision/text/Text$Line;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zze:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzab;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zze:Ljava/lang/String;

    :goto_0
    move-object v1, v0

    .line 4
    invoke-static {v3}, Lcom/google/mlkit/vision/text/internal/a;->a(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v2

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzg:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzab;->zzb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "und"

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzg:Ljava/lang/String;

    :goto_1
    move-object v4, v0

    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zza:[Lcom/google/android/gms/internal/mlkit_vision_text_common/zzr;

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v6, Lcom/google/mlkit/vision/text/internal/zzg;

    invoke-direct {v6, v5}, Lcom/google/mlkit/vision/text/internal/zzg;-><init>(Landroid/graphics/Matrix;)V

    .line 7
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbw;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/List;

    move-result-object v6

    iget v7, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzf:F

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;

    iget v8, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzf;->zze:F

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/mlkit/vision/text/Text$Line;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Landroid/graphics/Matrix;Ljava/util/List;FF)V

    return-object v9
.end method
