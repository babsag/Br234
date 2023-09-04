.class public final synthetic Lcaf/io/f1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcaf/io/k;

.field public final synthetic b:Lcaf/io/Z;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/k;Lcaf/io/Z;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/f1;->a:Lcaf/io/k;

    iput-object p2, p0, Lcaf/io/f1;->b:Lcaf/io/Z;

    iput-object p3, p0, Lcaf/io/f1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcaf/io/f1;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcaf/io/f1;->a:Lcaf/io/k;

    iget-object v1, p0, Lcaf/io/f1;->b:Lcaf/io/Z;

    iget-object v2, p0, Lcaf/io/f1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcaf/io/f1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcaf/io/f0;->b(Lcaf/io/k;Lcaf/io/Z;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
