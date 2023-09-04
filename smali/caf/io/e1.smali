.class public final synthetic Lcaf/io/e1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcaf/io/f;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcaf/io/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/e1;->a:Lcaf/io/f;

    iput p2, p0, Lcaf/io/e1;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcaf/io/e1;->a:Lcaf/io/f;

    iget v1, p0, Lcaf/io/e1;->b:I

    invoke-static {v0, v1}, Lcaf/io/f;->f(Lcaf/io/f;I)V

    return-void
.end method
