.class public final synthetic Lcom/google/mlkit/vision/text/zzc;
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

    iput-object p1, p0, Lcom/google/mlkit/vision/text/zzc;->zza:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/vision/text/zzc;->zza:Landroid/graphics/Matrix;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpc;

    .line 1
    new-instance v1, Lcom/google/mlkit/vision/text/Text$Element;

    invoke-direct {v1, p1, v0}, Lcom/google/mlkit/vision/text/Text$Element;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpc;Landroid/graphics/Matrix;)V

    return-object v1
.end method
