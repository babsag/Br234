.class Lsun/security/x509/NetscapeCertTypeExtension$a;
.super Ljava/lang/Object;
.source "NetscapeCertTypeExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/x509/NetscapeCertTypeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/security/x509/NetscapeCertTypeExtension$a;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lsun/security/x509/NetscapeCertTypeExtension$a;->b:I

    return-void
.end method
