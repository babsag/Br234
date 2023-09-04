.class public final synthetic Lcaf/io/p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcaf/io/L;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/L;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/p0;->a:Lcaf/io/L;

    iput-object p2, p0, Lcaf/io/p0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcaf/io/p0;->a:Lcaf/io/L;

    iget-object v1, p0, Lcaf/io/p0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcaf/io/L;->S(Lcaf/io/L;Ljava/lang/String;)V

    return-void
.end method
