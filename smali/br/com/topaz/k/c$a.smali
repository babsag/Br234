.class public Lbr/com/topaz/k/c$a;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbr/com/topaz/k/c;


# direct methods
.method public constructor <init>(Lbr/com/topaz/k/c;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/k/c$a;->a:Lbr/com/topaz/k/c;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
