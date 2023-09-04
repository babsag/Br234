.class final Lcom/google/android/gms/internal/mlkit_vision_text_common/s;
.super Lcom/google/android/gms/internal/mlkit_vision_text_common/v;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field final synthetic e:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/s;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/v;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;Lcom/google/android/gms/internal/mlkit_vision_text_common/r;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a(I)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/s;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/z;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/x;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/z;I)V

    return-object v0
.end method
