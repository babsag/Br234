.class final Lcom/google/android/gms/internal/mlkit_vision_text_common/e0;
.super Lcom/google/android/gms/internal/mlkit_vision_text_common/a;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field private final c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/e0;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/e0;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbm;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
