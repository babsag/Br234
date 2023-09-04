.class public Lcom/ca/mas/foundation/MASDeviceAttributeOverflowException;
.super Ljava/lang/Exception;
.source "MASDeviceAttributeOverflowException.java"


# instance fields
.field private final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/foundation/MASDeviceAttributeOverflowException;->a:Ljava/lang/Throwable;

    return-void
.end method
