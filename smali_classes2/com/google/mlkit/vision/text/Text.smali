.class public Lcom/google/mlkit/vision/text/Text;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/text/Text$a;,
        Lcom/google/mlkit/vision/text/Text$Symbol;,
        Lcom/google/mlkit/vision/text/Text$Element;,
        Lcom/google/mlkit/vision/text/Text$Line;,
        Lcom/google/mlkit/vision/text/Text$TextBlock;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpg;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpg;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/text/Text;->a:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpg;->zza()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mlkit/vision/text/Text;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpg;->zzb()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/google/mlkit/vision/text/zza;

    invoke-direct {v1, p2}, Lcom/google/mlkit/vision/text/zza;-><init>(Landroid/graphics/Matrix;)V

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbw;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/text/Text;->a:Ljava/util/List;

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Lcom/google/mlkit/vision/text/Text;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBlocks()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
