from fastapi import Request, HTTPException, status

async def get_tenant_from_header(request: Request):
    # TODO: Fix this function so tenant extraction works regardless of capitalization of the header.
    # Current behavior is case sensitive; this is a placeholder for the candidate to fix.
    tenant = request.headers.get('X-Tenant-Id')
    if not tenant:
        raise HTTPException(
            status_code=status.HTTP_403_FORBIDDEN,
            detail="Missing or invalid tenant header."
        )
    return tenant
