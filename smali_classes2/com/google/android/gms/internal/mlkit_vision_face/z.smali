.class final Lcom/google/android/gms/internal/mlkit_vision_face/z;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-mlkit-face-detection@@17.1.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/mlkit_vision_face/a0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/z;->a:Lcom/google/android/gms/internal/mlkit_vision_face/a0;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/z;->a:Lcom/google/android/gms/internal/mlkit_vision_face/a0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/a0;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/z;->a:Lcom/google/android/gms/internal/mlkit_vision_face/a0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/a0;->o()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_face/u;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/u;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/a0;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/z;->a:Lcom/google/android/gms/internal/mlkit_vision_face/a0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/a0;->size()I

    move-result v0

    return v0
.end method
