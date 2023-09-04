.class public final synthetic Lcaf/io/h0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcaf/io/w$a;


# direct methods
.method public synthetic constructor <init>(Lcaf/io/w$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcaf/io/h0;->a:Lcaf/io/w$a;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcaf/io/h0;->a:Lcaf/io/w$a;

    invoke-interface {v0, p1}, Lcaf/io/w$a;->a(Ljava/lang/Exception;)V

    return-void
.end method
