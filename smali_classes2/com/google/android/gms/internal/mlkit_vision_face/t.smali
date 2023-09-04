.class final Lcom/google/android/gms/internal/mlkit_vision_face/t;
.super Lcom/google/android/gms/internal/mlkit_vision_face/w;
.source "com.google.android.gms:play-services-mlkit-face-detection@@17.1.0"


# instance fields
.field final synthetic e:Lcom/google/android/gms/internal/mlkit_vision_face/a0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/a0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/t;->e:Lcom/google/android/gms/internal/mlkit_vision_face/a0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_face/w;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/a0;Lcom/google/android/gms/internal/mlkit_vision_face/s;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a(I)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/y;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/t;->e:Lcom/google/android/gms/internal/mlkit_vision_face/a0;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_face/y;-><init>(Lcom/google/android/gms/internal/mlkit_vision_face/a0;I)V

    return-object v0
.end method
