.class public final synthetic Lcaf/io/i1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lcaf/io/w;

.field public final synthetic b:Lcom/google/mlkit/vision/common/InputImage;

.field public final synthetic c:Lcaf/io/w$a;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/w;Lcom/google/mlkit/vision/common/InputImage;Lcaf/io/w$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/i1;->a:Lcaf/io/w;

    iput-object p2, p0, Lcaf/io/i1;->b:Lcom/google/mlkit/vision/common/InputImage;

    iput-object p3, p0, Lcaf/io/i1;->c:Lcaf/io/w$a;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcaf/io/i1;->a:Lcaf/io/w;

    iget-object v1, p0, Lcaf/io/i1;->b:Lcom/google/mlkit/vision/common/InputImage;

    iget-object v2, p0, Lcaf/io/i1;->c:Lcaf/io/w$a;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcaf/io/w;->f(Lcaf/io/w;Lcom/google/mlkit/vision/common/InputImage;Lcaf/io/w$a;Ljava/util/List;)V

    return-void
.end method
