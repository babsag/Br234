.class Lcaf/io/m1;
.super Ljava/lang/Object;
.source "PassiveFaceLivenessController.java"

# interfaces
.implements Lcaf/io/w$a;


# instance fields
.field final synthetic a:Lcaf/io/w;

.field final synthetic b:Lcaf/io/L;


# direct methods
.method constructor <init>(Lcaf/io/L;Lcaf/io/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/m1;->b:Lcaf/io/L;

    iput-object p2, p0, Lcaf/io/m1;->a:Lcaf/io/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/m1;->b:Lcaf/io/L;

    iget-object v1, p0, Lcaf/io/m1;->a:Lcaf/io/w;

    invoke-static {v0, v1, p1}, Lcaf/io/L;->i(Lcaf/io/L;Lcaf/io/w;Lcom/google/mlkit/vision/common/InputImage;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcaf/io/m1;->b:Lcaf/io/L;

    invoke-virtual {v0, p1}, Lcaf/io/L;->a(Ljava/lang/Exception;)V

    return-void
.end method
