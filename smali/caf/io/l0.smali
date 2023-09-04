.class public final synthetic Lcaf/io/l0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcaf/io/L;

.field public final synthetic b:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/L;Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/l0;->a:Lcaf/io/L;

    iput-object p2, p0, Lcaf/io/l0;->b:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcaf/io/l0;->a:Lcaf/io/L;

    iget-object v1, p0, Lcaf/io/l0;->b:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    invoke-static {v0, v1}, Lcaf/io/L;->O(Lcaf/io/L;Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    return-void
.end method
